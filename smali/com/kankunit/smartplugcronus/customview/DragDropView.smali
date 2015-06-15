.class public Lcom/kankunit/smartplugcronus/customview/DragDropView;
.super Landroid/widget/FrameLayout;
.source "DragDropView.java"


# instance fields
.field private OnTouchToDrag:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/DragDropView$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/DragDropView$1;-><init>(Lcom/kankunit/smartplugcronus/customview/DragDropView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragDropView;->OnTouchToDrag:Landroid/view/View$OnTouchListener;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/DragDropView$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/DragDropView$1;-><init>(Lcom/kankunit/smartplugcronus/customview/DragDropView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragDropView;->OnTouchToDrag:Landroid/view/View$OnTouchListener;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/DragDropView$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/customview/DragDropView$1;-><init>(Lcom/kankunit/smartplugcronus/customview/DragDropView;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/DragDropView;->OnTouchToDrag:Landroid/view/View$OnTouchListener;

    .line 42
    return-void
.end method


# virtual methods
.method public AddDraggableView(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "draggableObject"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v1, "lpDraggableView":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 55
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .local v0, "ivDrag":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/DragDropView;->OnTouchToDrag:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/DragDropView;->addView(Landroid/view/View;)V

    .line 76
    .end local v0    # "ivDrag":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
