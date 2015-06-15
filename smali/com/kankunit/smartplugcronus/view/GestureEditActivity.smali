.class public Lcom/kankunit/smartplugcronus/view/GestureEditActivity;
.super Landroid/app/Activity;
.source "GestureEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PARAM_INTENT_CODE:Ljava/lang/String; = "PARAM_INTENT_CODE"

.field public static final PARAM_IS_FIRST_ADVICE:Ljava/lang/String; = "PARAM_IS_FIRST_ADVICE"

.field public static final PARAM_PHONE_NUMBER:Ljava/lang/String; = "PARAM_PHONE_NUMBER"


# instance fields
.field private mConfirmPassword:Ljava/lang/String;

.field private mFirstPassword:Ljava/lang/String;

.field private mGestureContainer:Landroid/widget/FrameLayout;

.field private mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

.field private mIsFirstInput:Z

.field private mLockIndicator:Lcom/kankunit/smartplugcronus/customview/LockIndicator;

.field private mParamIntentCode:I

.field private mParamPhoneNumber:Ljava/lang/String;

.field private mParamSetUpcode:Ljava/lang/String;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextReset:Landroid/widget/TextView;

.field private mTextTip:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mParamSetUpcode:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mIsFirstInput:Z

    .line 44
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mFirstPassword:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mConfirmPassword:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->isInputPassValidate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mIsFirstInput:Z

    return v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mFirstPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->updateCodeList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextReset:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mFirstPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mIsFirstInput:Z

    return-void
.end method

.method private isInputPassValidate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inputPassword"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUpListeners()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextReset:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private setUpViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTitle:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextCancel:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextReset:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextReset:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 72
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/customview/LockIndicator;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mLockIndicator:Lcom/kankunit/smartplugcronus/customview/LockIndicator;

    .line 73
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTip:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContainer:Landroid/widget/FrameLayout;

    .line 76
    new-instance v0, Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    const-string v1, ""

    new-instance v2, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/GestureEditActivity;)V

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mGestureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->setParentView(Landroid/view/ViewGroup;)V

    .line 122
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->updateCodeList(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private updateCodeList(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputCode"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mLockIndicator:Lcom/kankunit/smartplugcronus/customview/LockIndicator;

    invoke-virtual {v0, p1}, Lcom/kankunit/smartplugcronus/customview/LockIndicator;->setPath(Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 139
    :sswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->finish()V

    goto :goto_0

    .line 142
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mIsFirstInput:Z

    .line 143
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->updateCodeList(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->mTextTip:Landroid/widget/TextView;

    const v1, 0x7f0c0290

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070084 -> :sswitch_0
        0x7f070089 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->setUpViews()V

    .line 64
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;->setUpListeners()V

    .line 65
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 52
    return-void
.end method
