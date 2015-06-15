.class public Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/AdjustmentListener;


# instance fields
.field protected _lastMaximum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    return-void
.end method


# virtual methods
.method public adjustmentValueChanged(Ljava/awt/event/AdjustmentEvent;)V
    .locals 4

    invoke-virtual {p1}, Ljava/awt/event/AdjustmentEvent;->getAdjustable()Ljava/awt/Adjustable;

    move-result-object v0

    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v1

    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v2

    iget v3, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/awt/Adjustable;->getValue()I

    move-result v2

    invoke-interface {v0}, Ljava/awt/Adjustable;->getVisibleAmount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v0}, Ljava/awt/Adjustable;->getUnitIncrement()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-lt v2, v3, :cond_1

    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/awt/Adjustable;->setValue(I)V

    :cond_1
    iput v1, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    goto :goto_0
.end method
