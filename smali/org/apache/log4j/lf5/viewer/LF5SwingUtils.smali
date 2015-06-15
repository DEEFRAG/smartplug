.class public Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static contains(ILjavax/swing/table/TableModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p0, :cond_0

    invoke-interface {p1}, Ljavax/swing/table/TableModel;->getRowCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static makeScrollBarTrack(Ljava/awt/Adjustable;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;-><init>()V

    invoke-interface {p0, v0}, Ljava/awt/Adjustable;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V

    goto :goto_0
.end method

.method public static makeVerticalScrollBarTrack(Ljavax/swing/JScrollPane;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->makeScrollBarTrack(Ljava/awt/Adjustable;)V

    goto :goto_0
.end method

.method protected static moveAdjustable(ILjava/awt/Adjustable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p0}, Ljava/awt/Adjustable;->setValue(I)V

    goto :goto_0
.end method

.method protected static repaintLater(Ljavax/swing/JComponent;)V
    .locals 1

    new-instance v0, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;-><init>(Ljavax/swing/JComponent;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static selectRow(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->contains(ILjavax/swing/table/TableModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/swing/JTable;->getRowHeight()I

    move-result v0

    mul-int/2addr v0, p0

    invoke-virtual {p2}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->moveAdjustable(ILjava/awt/Adjustable;)V

    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->selectRow(ILjavax/swing/ListSelectionModel;)V

    invoke-static {p1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->repaintLater(Ljavax/swing/JComponent;)V

    goto :goto_0
.end method

.method protected static selectRow(ILjavax/swing/ListSelectionModel;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p0, p0}, Ljavax/swing/ListSelectionModel;->setSelectionInterval(II)V

    goto :goto_0
.end method
