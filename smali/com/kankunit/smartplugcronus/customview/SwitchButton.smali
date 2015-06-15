.class public Lcom/kankunit/smartplugcronus/customview/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;
    }
.end annotation


# instance fields
.field private bg_off:Landroid/graphics/Bitmap;

.field private bg_on:Landroid/graphics/Bitmap;

.field private downX:F

.field private listener:Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

.field private nowStatus:Z

.field private nowX:F

.field private onSlip:Z

.field private slipper_btn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->onSlip:Z

    .line 36
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 46
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->onSlip:Z

    .line 36
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 51
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->init()V

    .line 52
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203bb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    .line 57
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203bd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0, p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 69
    .local v2, "x":F
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203bd

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    .line 77
    :goto_0
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->onSlip:Z

    if-eqz v3, :cond_3

    .line 78
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 90
    :goto_1
    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    .line 91
    const/4 v2, 0x0

    .line 97
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 74
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203bc

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 81
    :cond_2
    iget v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    if-eqz v3, :cond_4

    .line 84
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 93
    :cond_5
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 133
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->onSlip:Z

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 135
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 136
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->listener:Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->listener:Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    invoke-interface {v0, p0, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V

    .line 147
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->invalidate()V

    move v0, v1

    .line 148
    :cond_1
    return v0

    .line 104
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 107
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->onSlip:Z

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->downX:F

    .line 109
    iget v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->downX:F

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    goto :goto_1

    .line 114
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    goto :goto_1

    .line 118
    :pswitch_2
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->onSlip:Z

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 120
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->slipper_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    .line 127
    :goto_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->listener:Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->listener:Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    invoke-interface {v0, p0, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V

    goto :goto_1

    .line 123
    :cond_2
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 124
    iput v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    goto :goto_2

    .line 138
    :cond_3
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 139
    iput v4, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    .line 172
    :goto_0
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowStatus:Z

    .line 173
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->postInvalidate()V

    .line 174
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->nowX:F

    goto :goto_0
.end method

.method public setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->listener:Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;

    .line 159
    return-void
.end method
