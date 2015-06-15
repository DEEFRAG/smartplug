.class public Lcom/kankunit/smartplugcronus/view/AirControlActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AirControlActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field addButton:Landroid/widget/ImageButton;

.field private airId:I

.field are:Landroid/widget/ImageView;

.field autoLevel:Landroid/widget/ImageView;

.field autoModel:Landroid/widget/ImageView;

.field cold:Landroid/widget/ImageView;

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field du:Landroid/widget/ImageView;

.field functionButton:Landroid/widget/ImageButton;

.field hot:Landroid/widget/ImageView;

.field isOpened:Z

.field mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:I

.field moduleStatus:Landroid/widget/TextView;

.field oneLevel:Landroid/widget/ImageView;

.field openButton:Landroid/widget/ImageButton;

.field pop:Landroid/widget/PopupWindow;

.field reduceButton:Landroid/widget/ImageButton;

.field private scene_control_menu:Landroid/widget/ImageButton;

.field private scene_control_menu_edit:Landroid/widget/TextView;

.field private scene_control_menu_info:Landroid/widget/TextView;

.field private temp:I

.field tempCount:Landroid/widget/TextView;

.field threeLevel:Landroid/widget/ImageView;

.field twoLevel:Landroid/widget/ImageView;

.field ventilate:Landroid/widget/ImageView;

.field windButton:Landroid/widget/ImageButton;

.field private windLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    .line 53
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    .line 54
    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    .line 55
    const/16 v0, 0x19

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->mac:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)Lnet/tsz/afinal/FinalDb;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->airId:I

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/AirControlActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->saveHistory()V

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    return v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    return v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private saveHistory()V
    .locals 3

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v0, "sBuffer":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 633
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setHistory(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 635
    return-void

    .line 628
    :cond_0
    const-string v1, "0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public closeAirControl()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 197
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 515
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "body":Ljava/lang/String;
    const-string v1, "wan_server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const-string v1, "Air conditioning does not have this function key"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 522
    :cond_0
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 614
    const-string v0, "Request timed out"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 615
    return-void
.end method

.method public getSendString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 552
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    if-eqz v4, :cond_0

    .line 553
    const-string v0, "b"

    .line 557
    .local v0, "a":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_1
    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "b":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    :goto_2
    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "c":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    add-int/lit8 v5, v5, -0x11

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "d":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 555
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "d":Ljava/lang/String;
    :cond_0
    const-string v0, "a"

    .restart local v0    # "a":Ljava/lang/String;
    goto :goto_0

    .line 557
    :cond_1
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    goto :goto_1

    .line 558
    .restart local v1    # "b":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    goto :goto_2
.end method

.method public initEvent()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->openButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->functionButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->addButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlActivity$5;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->reduceButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlActivity$6;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 639
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 640
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity$8;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 648
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 655
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 656
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AirControlActivity$10;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    new-instance v3, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v3, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 80
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "controlId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->airId:I

    .line 82
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 83
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->airId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 85
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->mac:Ljava/lang/String;

    .line 86
    const v3, 0x7f030032

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setContentView(I)V

    .line 87
    const v3, 0x7f0700d7

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0700d8

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f0700d9

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    .line 90
    const v3, 0x7f0700dc

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    .line 91
    const v3, 0x7f0700dd

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    .line 92
    const v3, 0x7f0700de

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    .line 93
    const v3, 0x7f0700df

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    .line 94
    const v3, 0x7f0700e0

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    .line 95
    const v3, 0x7f0700e3

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    .line 96
    const v3, 0x7f0700e4

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    .line 97
    const v3, 0x7f0700e5

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    .line 98
    const v3, 0x7f0700e6

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    .line 100
    const v3, 0x7f0700da

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->openButton:Landroid/widget/ImageButton;

    .line 101
    const v3, 0x7f0700e7

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->functionButton:Landroid/widget/ImageButton;

    .line 102
    const v3, 0x7f0700e8

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->addButton:Landroid/widget/ImageButton;

    .line 103
    const v3, 0x7f0700e9

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->reduceButton:Landroid/widget/ImageButton;

    .line 104
    const v3, 0x7f0700eb

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windButton:Landroid/widget/ImageButton;

    .line 106
    const v3, 0x7f0700d4

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    .line 107
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f07013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    .line 109
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0201

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 112
    const v3, 0x7f07013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    .line 113
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c018c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 115
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 116
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v2, v8, v8, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    .line 117
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 119
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 121
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_edit:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/AirControlActivity$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu_info:Landroid/widget/TextView;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/AirControlActivity$2;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->closeAirControl()V

    .line 151
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->initEvent()V

    .line 153
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    if-eqz v3, :cond_5

    .line 154
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getHistory()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "historyString":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "sArr":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v7, :cond_5

    .line 157
    aget-object v3, v1, v9

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 158
    iput-boolean v6, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->isOpened:Z

    .line 159
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    .line 160
    aget-object v3, v1, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    .line 161
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    .line 162
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->temp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    if-ne v3, v6, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setColdModel()V

    .line 166
    :cond_0
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    if-ne v3, v10, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setHotModel()V

    .line 169
    :cond_1
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    if-ne v3, v7, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setAreModel()V

    .line 172
    :cond_2
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setVentilateModel()V

    .line 175
    :cond_3
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 176
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->setAudoModel()V

    .line 178
    :cond_4
    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-virtual {p0, v3, v4}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 182
    .end local v0    # "historyString":Ljava/lang/String;
    .end local v1    # "sArr":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 584
    const-string v2, "..."

    invoke-interface {p1, v2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    const v3, 0x7f020157

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 585
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 586
    .local v1, "subMenuItem":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 588
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 594
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->finish()V

    .line 609
    :goto_0
    return v6

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 603
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 605
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 606
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 607
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->scene_control_menu:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 578
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 579
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 565
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 566
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->airId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 567
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 569
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 571
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 574
    return-void
.end method

.method public openAirControl()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 216
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 219
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 220
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 222
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 224
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 621
    return-void
.end method

.method public sendInfraredData()V
    .locals 10

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 527
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getSendString()Ljava/lang/String;

    move-result-object v9

    .line 529
    .local v9, "send":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 530
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->mac:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emityun#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 534
    return-void
.end method

.method public sendOpenClose(Z)V
    .locals 10
    .param p1, "b"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 538
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v9, "bbdi"

    .line 539
    .local v9, "send":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 540
    const-string v9, "aaaa"

    .line 543
    :cond_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->mac:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "kankun-smartplug.com"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%operate#3031#emityun#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrandType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 548
    return-void
.end method

.method public setAreModel()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 405
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 409
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 410
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 411
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 412
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 413
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 414
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 415
    return-void
.end method

.method public setAudoModel()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 430
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 434
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 435
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 437
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 439
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 440
    return-void
.end method

.method public setColdModel()V
    .locals 4

    .prologue
    const v3, 0x7f090034

    .line 380
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 385
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 386
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 387
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 388
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 389
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 390
    return-void
.end method

.method public setHotModel()V
    .locals 4

    .prologue
    const v3, 0x7f090035

    .line 393
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 397
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 398
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 400
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 401
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 402
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 403
    return-void
.end method

.method public setVentilateModel()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 417
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 421
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 422
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 423
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 424
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 425
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->updateWind(II)V

    .line 427
    return-void
.end method

.method public updateWind(II)V
    .locals 5
    .param p1, "model"    # I
    .param p2, "windLevel"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const v4, 0x7f0200c3

    const v3, 0x7f0200cd

    const v2, 0x7f0200c7

    .line 444
    if-ne p1, v0, :cond_4

    .line 445
    if-ne p2, v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 447
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 448
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 449
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-ne p2, v1, :cond_2

    .line 451
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 452
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 453
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 454
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 455
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 457
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 458
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 459
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 460
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 462
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 463
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 464
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 466
    :cond_4
    if-ne p1, v1, :cond_8

    .line 467
    if-ne p2, v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 469
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 470
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 471
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 472
    :cond_5
    if-ne p2, v1, :cond_6

    .line 473
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 474
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 475
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 476
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 477
    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 479
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 480
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 481
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 482
    :cond_7
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 484
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 485
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 486
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 489
    :cond_8
    if-ne p2, v0, :cond_9

    .line 490
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 491
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 492
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 493
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 494
    :cond_9
    if-ne p2, v1, :cond_a

    .line 495
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 496
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 497
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 498
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 499
    :cond_a
    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 500
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 501
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 502
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 503
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 504
    :cond_b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 506
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 507
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 508
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
