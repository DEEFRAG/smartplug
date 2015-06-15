.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/swing/table/TableCellEditor;
.implements Ljavax/swing/tree/TreeCellEditor;


# static fields
.field static class$javax$swing$event$CellEditorListener:Ljava/lang/Class;


# instance fields
.field protected _changeEvent:Ljavax/swing/event/ChangeEvent;

.field protected _clickCountToStart:I

.field protected _listenerList:Ljavax/swing/event/EventListenerList;

.field protected _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

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


# virtual methods
.method public addCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_0
.end method

.method public cancelCellEditing()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingCanceled()V

    return-void
.end method

.method protected fireEditingCanceled()V
    .locals 4

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    aget-object v3, v2, v1

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_1
    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v0, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v0, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    :cond_1
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected fireEditingStopped()V
    .locals 4

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    aget-object v3, v2, v1

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_1
    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v0, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v0, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    :cond_1
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getClickCountToStart()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return v0
.end method

.method public getTableCellEditorComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTreeCellEditorComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .locals 2

    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_0
.end method

.method public setCellEditorValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    return-void
.end method

.method public setClickCountToStart(I)V
    .locals 0

    iput p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return-void
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->isCellEditable(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopCellEditing()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingStopped()V

    const/4 v0, 0x1

    return v0
.end method
