.class public Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "UniversalControlActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field autoButton:Landroid/view/View;

.field cellWidth:I

.field imageHeight:I

.field lastX:I

.field lastY:I

.field leftWidth:I

.field lx:I

.field ly:I

.field menuLayout:Landroid/view/View;

.field panelLayout:Landroid/view/View;

.field rightWidth:I

.field screenHeight:I

.field screenWidth:I

.field titleHeight:I

.field totalLayout:Landroid/widget/AbsoluteLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 23
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenWidth:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenHeight:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->leftWidth:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->rightWidth:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->cellWidth:I

    .line 24
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->titleHeight:I

    .line 25
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->imageHeight:I

    .line 33
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastX:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastY:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lx:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->ly:I

    .line 20
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 156
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lx:I

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->ly:I

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lx:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->ly:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    return-void
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public initWidth()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 79
    const v2, 0x7f07016d

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->titleHeight:I

    .line 80
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenWidth:I

    .line 81
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenHeight:I

    .line 82
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenWidth:I

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->leftWidth:I

    .line 83
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenWidth:I

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->leftWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->rightWidth:I

    .line 84
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->rightWidth:I

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->cellWidth:I

    .line 85
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->menuLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 86
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->leftWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->menuLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->panelLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 89
    .local v1, "params2":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->rightWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->panelLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->panelLayout:Landroid/view/View;

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->panelLayout:Landroid/view/View;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->leftWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0300eb

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f070395

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->menuLayout:Landroid/view/View;

    .line 51
    const v0, 0x7f070396

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->panelLayout:Landroid/view/View;

    .line 52
    const v0, 0x7f070394

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->totalLayout:Landroid/widget/AbsoluteLayout;

    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->menuLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    const v0, 0x7f07020a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->autoButton:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->autoButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->imageHeight:I

    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->autoButton:Landroid/view/View;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->initWidth()V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 42
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 37
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 151
    :goto_0
    :pswitch_0
    return v8

    .line 103
    :pswitch_1
    const-string v6, "Down..."

    .line 102
    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastX:I

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastY:I

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastX:I

    sub-int v1, v6, v7

    .line 110
    .local v1, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastY:I

    sub-int v2, v6, v7

    .line 112
    .local v2, "dy":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int v3, v6, v1

    .line 113
    .local v3, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v5, v6, v2

    .line 114
    .local v5, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    add-int v4, v6, v1

    .line 115
    .local v4, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int v0, v6, v2

    .line 123
    .local v0, "bottom":I
    if-gez v3, :cond_0

    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int v4, v3, v6

    .line 128
    :cond_0
    iget v6, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenWidth:I

    if-le v4, v6, :cond_1

    .line 129
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenWidth:I

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v3, v4, v6

    .line 133
    :cond_1
    if-gez v5, :cond_2

    .line 134
    const/4 v5, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 138
    :cond_2
    iget v6, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenHeight:I

    if-le v0, v6, :cond_3

    .line 139
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->screenHeight:I

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v5, v0, v6

    .line 142
    :cond_3
    invoke-virtual {p1, v3, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastX:I

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/kankunit/smartplugcronus/view/UniversalControlActivity;->lastY:I

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
