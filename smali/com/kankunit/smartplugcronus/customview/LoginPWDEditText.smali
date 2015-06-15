.class public Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;
.super Landroid/widget/EditText;
.source "LoginPWDEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private hasFoucs:Z

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setClearIconVisible(Z)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    return-void
.end method

.method public static shakeAnimation(I)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "counts"    # I

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 155
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float v2, p0

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 156
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->hasFoucs:Z

    .line 96
    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setClearIconVisible(Z)V

    .line 101
    :goto_0
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setClearIconVisible(Z)V

    .line 102
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->hasFoucs:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setClearIconVisible(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 76
    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 79
    .local v1, "touchable":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/view/FetchPWDActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "touchable":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    .local v0, "right":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 112
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 111
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void

    .line 110
    .end local v0    # "right":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShakeAnimation()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->shakeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/customview/LoginPWDEditText;->setAnimation(Landroid/view/animation/Animation;)V

    .line 145
    return-void
.end method
