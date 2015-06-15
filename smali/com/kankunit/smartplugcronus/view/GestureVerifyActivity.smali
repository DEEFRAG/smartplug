.class public Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;
.super Landroid/app/Activity;
.source "GestureVerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PARAM_INTENT_CODE:Ljava/lang/String; = "PARAM_INTENT_CODE"

.field public static final PARAM_PHONE_NUMBER:Ljava/lang/String; = "PARAM_PHONE_NUMBER"


# instance fields
.field private mExitTime:J

.field private mGestureContainer:Landroid/widget/FrameLayout;

.field private mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

.field private mImgUserLogo:Landroid/widget/ImageView;

.field private mParamIntentCode:I

.field private mParamPhoneNumber:Ljava/lang/String;

.field private mTextCancel:Landroid/widget/TextView;

.field private mTextForget:Landroid/widget/TextView;

.field private mTextOther:Landroid/widget/TextView;

.field private mTextPhoneNumber:Landroid/widget/TextView;

.field private mTextTip:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTopLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mExitTime:J

    .line 37
    return-void
.end method

.method private ObtainExtraData()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PARAM_PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mParamPhoneNumber:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PARAM_INTENT_CODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mParamIntentCode:I

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Lcom/kankunit/smartplugcronus/customview/GestureContentView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextTip:Landroid/widget/TextView;

    return-object v0
.end method

.method private getProtectedMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 162
    :cond_0
    const-string v1, ""

    .line 168
    :goto_0
    return-object v1

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setUpListeners()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextOther:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method private setUpViews()V
    .locals 11

    .prologue
    const v9, 0x7f07008b

    .line 80
    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mImgUserLogo:Landroid/widget/ImageView;

    .line 81
    const v8, 0x7f070083

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 82
    const v8, 0x7f07008a

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextTitle:Landroid/widget/TextView;

    .line 83
    const v8, 0x7f070084

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextCancel:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0, v9}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mImgUserLogo:Landroid/widget/ImageView;

    .line 85
    const v8, 0x7f07008c

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextPhoneNumber:Landroid/widget/TextView;

    .line 86
    const v8, 0x7f070086

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextTip:Landroid/widget/TextView;

    .line 87
    const v8, 0x7f070088

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContainer:Landroid/widget/FrameLayout;

    .line 88
    const v8, 0x7f07008d

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextForget:Landroid/widget/TextView;

    .line 89
    const v8, 0x7f07008e

    invoke-virtual {p0, v8}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextOther:Landroid/widget/TextView;

    .line 90
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextForget:Landroid/widget/TextView;

    new-instance v9, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;

    invoke-direct {v9, p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const-string v8, "userface"

    const-string v9, "faceimage"

    invoke-static {p0, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "photoPathString":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 105
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    .local v2, "photo":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v0, v8, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 108
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mImgUserLogo:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    const-string v8, "userinfo"

    const-string v9, "userid"

    invoke-static {p0, v8, v9}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "userid":Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/kankunit/smartplugcronus/dao/UserDao;->getUserByUserId(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/UserModel;

    move-result-object v6

    .line 116
    .local v6, "userModel":Lcom/kankunit/smartplugcronus/model/UserModel;
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mTextPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const-string v8, "KSmartLoginInfo"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 120
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v8, "userPWD"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "pwd":Ljava/lang/String;
    new-instance v8, Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    const/4 v9, 0x1

    .line 122
    new-instance v10, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;

    invoke-direct {v10, p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;)V

    invoke-direct {v8, p0, v9, v4, v10}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/kankunit/smartplugcronus/customview/GestureDrawline$GestureCallBack;)V

    .line 121
    iput-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    .line 151
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContentView:Lcom/kankunit/smartplugcronus/customview/GestureContentView;

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->mGestureContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9}, Lcom/kankunit/smartplugcronus/customview/GestureContentView;->setParentView(Landroid/view/ViewGroup;)V

    .line 152
    return-void

    .line 110
    .end local v4    # "pwd":Ljava/lang/String;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "userModel":Lcom/kankunit/smartplugcronus/model/UserModel;
    .end local v7    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->finish()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f070084
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->ObtainExtraData()V

    .line 70
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->setUpViews()V

    .line 71
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/GestureVerifyActivity;->setUpListeners()V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 59
    return-void
.end method
