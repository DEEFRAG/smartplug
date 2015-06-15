.class public Lcom/kankunit/smartplugcronus/customview/GestureContentView;
.super Landroid/view/ViewGroup;
.source "GestureContentView.java"


# instance fields
.field private baseNum:I

.field private blockWidth:I

.field private context:Landroid/content/Context;

.field private gestureDrawline:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

.field private isVerify:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/customview/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private screenDispaly:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isVerify"    # Z
    .param p3, "passWord"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x6

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    .line 46
    invoke-static {p1}, Lcom/kankunit/smartplugcronus/util/AppUtil;->getScreenDispaly(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->screenDispaly:[I

    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->screenDispaly:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->list:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->context:Landroid/content/Context;

    .line 50
    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->isVerify:Z

    .line 52
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->addChild()V

    .line 54
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->list:Ljava/util/List;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;-><init>(Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->gestureDrawline:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    .line 55
    return-void
.end method

.method private addChild()V
    .locals 12

    .prologue
    .line 58
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v6, 0x9

    if-lt v8, v6, :cond_0

    .line 75
    return-void

    .line 59
    :cond_0
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v5, "image":Landroid/widget/ImageView;
    const v6, 0x7f0201ab

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 61
    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->invalidate()V

    .line 64
    div-int/lit8 v9, v8, 0x3

    .line 66
    .local v9, "row":I
    rem-int/lit8 v7, v8, 0x3

    .line 68
    .local v7, "col":I
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v6, v7

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v11, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v10, v11

    add-int v1, v6, v10

    .line 69
    .local v1, "leftX":I
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v6, v9

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v11, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v10, v11

    add-int v3, v6, v10

    .line 70
    .local v3, "topY":I
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v6, v7

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    add-int/2addr v6, v10

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v11, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v10, v11

    sub-int v2, v6, v10

    .line 71
    .local v2, "rightX":I
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v6, v9

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    add-int/2addr v6, v10

    iget v10, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v11, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v10, v11

    sub-int v4, v6, v10

    .line 72
    .local v4, "bottomY":I
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/GesturePoint;

    add-int/lit8 v6, v8, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/kankunit/smartplugcronus/customview/GesturePoint;-><init>(IIIILandroid/widget/ImageView;I)V

    .line 73
    .local v0, "p":Lcom/kankunit/smartplugcronus/customview/GesturePoint;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->list:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearDrawlineState(J)V
    .locals 1
    .param p1, "delayTime"    # J

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->gestureDrawline:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    invoke-virtual {v0, p1, p2}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->clearDrawlineState(J)V

    .line 116
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 98
    return-void

    .line 91
    :cond_0
    div-int/lit8 v2, v1, 0x3

    .line 93
    .local v2, "row":I
    rem-int/lit8 v0, v1, 0x3

    .line 94
    .local v0, "col":I
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "v":Landroid/view/View;
    iget v4, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 96
    iget v6, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    mul-int/2addr v7, v2

    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->blockWidth:I

    iget v9, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->baseNum:I

    div-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 95
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 108
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->screenDispaly:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 80
    .local v1, "width":I
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 81
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->gestureDrawline:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    invoke-virtual {v2, v0}, Lcom/kankunit/smartplugcronus/customview/GestureDrawline;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->gestureDrawline:Lcom/kankunit/smartplugcronus/customview/GestureDrawline;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method
