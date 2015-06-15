.class public Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "DelayMiniActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;
    }
.end annotation


# instance fields
.field private closeState:Z

.field private dc:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;

.field private delay_mini_close_time:Landroid/widget/TextView;

.field private delay_mini_close_timetxt:Landroid/widget/TextView;

.field private delay_mini_do1img:Landroid/widget/ImageView;

.field private delay_mini_do1txt:Landroid/widget/TextView;

.field private delay_mini_do2img:Landroid/widget/ImageView;

.field private delay_mini_do2txt:Landroid/widget/TextView;

.field private delay_mini_open_time:Landroid/widget/TextView;

.field private delay_mini_open_timetxt:Landroid/widget/TextView;

.field private delay_mini_repeat:Landroid/widget/TextView;

.field private delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

.field private delay_time_close_layout:Landroid/widget/RelativeLayout;

.field private delay_time_open_layout:Landroid/widget/RelativeLayout;

.field private delay_white_bg:Landroid/widget/RelativeLayout;

.field private dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

.field private handler:Landroid/os/Handler;

.field private isCheck:[Z

.field private isOpenUp:Z

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private miniDelayStr:Ljava/lang/String;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private newAllEn:Ljava/lang/String;

.field private oldAllEn:Ljava/lang/String;

.field private openState:Z

.field private pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->initView()V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->newAllEn:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->newAllEn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, "message":Landroid/os/Message;
    const-string v1, "tack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 270
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    :cond_0
    return-void
.end method

.method private getIsOpenUp()Z
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const v6, 0x7f02013f

    const/4 v5, 0x1

    const v4, 0x7f090027

    .line 283
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getIsOpenUp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isOpenUp:Z

    .line 284
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    invoke-static {p0, v1, v7}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getDelayInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/kankunit/smartplugcronus/model/DelayModel;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    .line 285
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    .line 286
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isOpenUp:Z

    if-eqz v1, :cond_a

    .line 287
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_timetxt:Landroid/widget/TextView;

    const-string v2, "After opening"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_timetxt:Landroid/widget/TextView;

    const-string v2, "Then close"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 299
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 303
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    .line 310
    :goto_0
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    .line 484
    :goto_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dc:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dc:Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$DelayCount;->cancel()V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const-string v2, "y"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 491
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayRepeat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 492
    .local v0, "repeat":I
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 493
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :goto_2
    return-void

    .line 308
    .end local v0    # "repeat":I
    :cond_1
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    goto :goto_0

    .line 313
    :cond_2
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    goto :goto_1

    .line 316
    :cond_3
    const-string v1, "nowDo"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayHasOpenTimeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, "Being implemented"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 320
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 322
    :cond_4
    const-string v1, "finishDo"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayHasOpenTimeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 323
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, "Implementation complete"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 326
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 328
    :cond_5
    const-string v1, "waitDo"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayHasCloseTimeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, "Awaiting execution"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 332
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f020144

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 335
    :cond_6
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 336
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    .line 339
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 343
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, "Being implemented"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 346
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 351
    :goto_3
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 352
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    .line 355
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 363
    :goto_4
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    if-eqz v1, :cond_7

    .line 364
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_timetxt:Landroid/widget/TextView;

    const-string v2, "Then close"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_timetxt:Landroid/widget/TextView;

    const-string v2, "After opening"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    .line 371
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, "Being implemented"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 374
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 375
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 380
    :cond_7
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 348
    :cond_8
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    goto/16 :goto_3

    .line 360
    :cond_9
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    goto/16 :goto_4

    .line 383
    :cond_a
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_timetxt:Landroid/widget/TextView;

    const-string v2, "Then close"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseLongTime()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_timetxt:Landroid/widget/TextView;

    const-string v2, "After opening"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 388
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 394
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    .line 398
    :goto_5
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 399
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    .line 403
    :goto_6
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 410
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 396
    :cond_b
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    goto :goto_5

    .line 401
    :cond_c
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    goto :goto_6

    .line 415
    :cond_d
    const-string v1, "nowDo"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayHasCloseTimeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 416
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, "Being implemented"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 419
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 421
    :cond_e
    const-string v1, "finishDo"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayHasCloseTimeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 422
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, "Execution is completed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    const v2, 0x7f020143

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 425
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 427
    :cond_f
    const-string v1, "waitDo"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayHasOpenTimeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 428
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, "Awaiting execution"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 431
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f020144

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 434
    :cond_10
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 435
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    .line 438
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 446
    :goto_7
    const-string v1, "n"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayCloseState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 447
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    .line 450
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 454
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, "Being implemented"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 457
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 463
    :goto_8
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    if-eqz v1, :cond_11

    .line 464
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->dm:Lcom/kankunit/smartplugcronus/model/DelayModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DelayModel;->getDelayOpenLongTime()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getTimeStr(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_timetxt:Landroid/widget/TextView;

    const-string v2, "After opening"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    const-string v2, "--:--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_timetxt:Landroid/widget/TextView;

    const-string v2, "Then close"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iput-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    .line 471
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    const-string v2, "Being implemented"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    const v2, 0x7f020141

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 474
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 475
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 480
    :cond_11
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 443
    :cond_12
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->closeState:Z

    goto/16 :goto_7

    .line 459
    :cond_13
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->openState:Z

    goto/16 :goto_8

    .line 495
    .restart local v0    # "repeat":I
    :cond_14
    if-eqz v0, :cond_15

    if-ne v0, v5, :cond_16

    .line 496
    :cond_15
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    const-string v2, "Never"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    aput-boolean v5, v1, v7

    goto/16 :goto_2

    .line 498
    :cond_16
    const/16 v1, 0x270f

    if-ne v0, v1, :cond_17

    .line 499
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    const-string v2, "Unlimited"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    aput-boolean v5, v1, v5

    goto/16 :goto_2

    .line 502
    :cond_17
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    aput-boolean v5, v1, v0

    .line 503
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/MiniUtil;->getMiniRepeat([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    const-string v1, "y"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->oldAllEn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 187
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->initView()V

    .line 188
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 200
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->initView()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 259
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 135
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 136
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const/16 v1, 0x19

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    .line 139
    const-string v1, "miniDelayStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->initView()V

    .line 165
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "mainCmds":[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v6, v4, v7

    .line 229
    .local v6, "opentime":Ljava/lang/String;
    const/4 v7, 0x4

    aget-object v5, v4, v7

    .line 230
    .local v5, "openen":Ljava/lang/String;
    const/4 v7, 0x5

    aget-object v2, v4, v7

    .line 231
    .local v2, "closetime":Ljava/lang/String;
    const/4 v7, 0x6

    aget-object v1, v4, v7

    .line 232
    .local v1, "closeen":Ljava/lang/String;
    const-string v7, "mac"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v7, "pwd"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v7, "delay_open_time_value"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v7, "delay_close_time_value"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v7, "openState"

    const-string v8, "y"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v7, "closeState"

    const-string v8, "y"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v7, "isOpenUp"

    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getIsOpenUp()Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v7, "update"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v7, "delay_repeat_value"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 250
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    const-class v7, Lcom/kankunit/smartplugcronus/view/AddDelayMiniActivity;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v3, v10}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->setContentView(I)V

    .line 75
    const/16 v1, 0x19

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->isCheck:[Z

    .line 76
    new-instance v1, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v1, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->handler:Landroid/os/Handler;

    .line 79
    const v1, 0x7f07015e

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_open_layout:Landroid/widget/RelativeLayout;

    .line 80
    const v1, 0x7f070163

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_time_close_layout:Landroid/widget/RelativeLayout;

    .line 81
    const v1, 0x7f07015b

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_white_bg:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_white_bg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f07015c

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1txt:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f070160

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_timetxt:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f070161

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2txt:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f070165

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_timetxt:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f07015d

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do1img:Landroid/widget/ImageView;

    .line 88
    const v1, 0x7f070162

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_do2img:Landroid/widget/ImageView;

    .line 89
    const v1, 0x7f07015f

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_open_time:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f070164

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_close_time:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f070166

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_mini_repeat:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f07015a

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string v1, "miniDelayStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->miniDelayStr:Ljava/lang/String;

    .line 97
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->mac:Ljava/lang/String;

    .line 98
    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->pwd:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->initView()V

    .line 102
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->delay_switch:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;)V

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->finish()V

    .line 178
    :cond_0
    return v2
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/DelayMiniActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 195
    return-void
.end method
