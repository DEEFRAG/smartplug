.class public Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "AirControlRecordActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$PlayThread;
    }
.end annotation


# instance fields
.field addButton:Landroid/widget/ImageButton;

.field are:Landroid/widget/ImageView;

.field autoLevel:Landroid/widget/ImageView;

.field autoModel:Landroid/widget/ImageView;

.field cold:Landroid/widget/ImageView;

.field private controlId:I

.field private controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

.field private db:Lnet/tsz/afinal/FinalDb;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field du:Landroid/widget/ImageView;

.field functionButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field hot:Landroid/widget/ImageView;

.field isOpened:Z

.field isPlay:Z

.field isRecord:Z

.field mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:I

.field moduleStatus:Landroid/widget/TextView;

.field oneLevel:Landroid/widget/ImageView;

.field openButton:Landroid/widget/ImageButton;

.field playButton:Landroid/widget/ImageButton;

.field recordButton:Landroid/widget/ImageButton;

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field reduceButton:Landroid/widget/ImageButton;

.field private temp:I

.field tempCount:Landroid/widget/TextView;

.field threeLevel:Landroid/widget/ImageView;

.field twoLevel:Landroid/widget/ImageView;

.field ventilate:Landroid/widget/ImageView;

.field windButton:Landroid/widget/ImageButton;

.field private windLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isOpened:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isRecord:Z

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isPlay:Z

    .line 58
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    .line 59
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    .line 60
    const/16 v0, 0x19

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->temp:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->temp:I

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->temp:I

    return v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    return v0
.end method


# virtual methods
.method public addRecordButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 544
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "buttonName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public closeAirControl()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    const/16 v0, 0x19

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->temp:I

    .line 165
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 169
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 170
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 172
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 173
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 174
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 176
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 693
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 681
    return-void
.end method

.method public getSendString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 663
    iget-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->isOpened:Z

    if-eqz v4, :cond_0

    .line 664
    const-string v0, "b"

    .line 668
    .local v0, "a":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

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

    .line 669
    .local v1, "b":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

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

    .line 670
    .local v2, "c":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->temp:I

    add-int/lit8 v5, v5, -0x11

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "d":Ljava/lang/String;
    const-string v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 672
    const-string v4, "aaaa"

    .line 674
    :goto_3
    return-object v4

    .line 666
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "d":Ljava/lang/String;
    :cond_0
    const-string v0, "a"

    .restart local v0    # "a":Ljava/lang/String;
    goto :goto_0

    .line 668
    :cond_1
    iget v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    goto :goto_1

    .line 669
    .restart local v1    # "b":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    goto :goto_2

    .line 674
    .restart local v2    # "c":Ljava/lang/String;
    .restart local v3    # "d":Ljava/lang/String;
    :cond_3
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

    goto :goto_3
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 614
    const-string v3, ""

    .line 615
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 630
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 631
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 633
    :cond_0
    return-object v3

    .line 616
    :cond_1
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 617
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "buttonName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "buttonName":Ljava/lang/String;
    const-string v4, "open"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Switch + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_3
    const-string v4, "function"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Mode key  + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    goto :goto_1

    :cond_4
    const-string v4, "add"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Up arrow key  + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 624
    goto :goto_1

    :cond_5
    const-string v4, "reduce"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Down arrow key + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    goto :goto_1

    :cond_6
    const-string v4, "wind"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Wind speed key  + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public initEvent()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->functionButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->reduceButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$5;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$8;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 698
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 699
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$9;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$9;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 707
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$10;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$10;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 714
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 715
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v3, 0x7f02010d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 716
    new-instance v3, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$11;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$11;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 80
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 81
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    .line 82
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "controlId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlId:I

    .line 83
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 84
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 86
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setContentView(I)V

    .line 87
    const v0, 0x7f0700d7

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0700d8

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0700d9

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0700e3

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f0700e4

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f0700e6

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0700da

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->openButton:Landroid/widget/ImageButton;

    .line 101
    const v0, 0x7f0700e7

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->functionButton:Landroid/widget/ImageButton;

    .line 102
    const v0, 0x7f0700e8

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->addButton:Landroid/widget/ImageButton;

    .line 103
    const v0, 0x7f0700e9

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->reduceButton:Landroid/widget/ImageButton;

    .line 104
    const v0, 0x7f0700eb

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windButton:Landroid/widget/ImageButton;

    .line 106
    const v0, 0x7f0700ec

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->recordButton:Landroid/widget/ImageButton;

    .line 107
    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    .line 108
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 110
    new-instance v0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->handler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->closeAirControl()V

    .line 151
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->initEvent()V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 584
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 585
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100007

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 587
    const v1, 0x7f0703d3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 588
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 589
    const/4 v1, 0x1

    return v1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 594
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->finish()V

    .line 596
    const/4 v1, 0x1

    .line 608
    :goto_0
    return v1

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    const-string v1, "Please record"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 600
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "groupString"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSendString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "controlId"

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 607
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->finish()V

    .line 608
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 214
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 201
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 202
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 203
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    .local v0, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0    # "hongmi_header_title":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public openAirControl()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 181
    const/16 v0, 0x19

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->temp:I

    .line 182
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 190
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 191
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 192
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 193
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 194
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 196
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 197
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 687
    return-void
.end method

.method public sendInfraredData()V
    .locals 10

    .prologue
    .line 651
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 652
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getSendString()Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "send":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 657
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

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 658
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 659
    return-void
.end method

.method public sendOpenClose(Z)V
    .locals 10
    .param p1, "b"    # Z

    .prologue
    .line 637
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    .line 638
    .local v6, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const-string v9, "bbdi"

    .line 639
    .local v9, "send":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 640
    const-string v9, "aaaa"

    .line 643
    :cond_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->mac:Ljava/lang/String;

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

    .line 646
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

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->controlModel:Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

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

    .line 647
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 648
    return-void
.end method

.method public setAreModel()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 434
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 439
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 440
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 441
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 442
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 443
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->updateWind(II)V

    .line 444
    return-void
.end method

.method public setAudoModel()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 459
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 463
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 464
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 465
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 466
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 467
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 468
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->updateWind(II)V

    .line 469
    return-void
.end method

.method public setColdModel()V
    .locals 4

    .prologue
    const v3, 0x7f090034

    .line 409
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 413
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 414
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 415
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 416
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 417
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 418
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->updateWind(II)V

    .line 419
    return-void
.end method

.method public setHotModel()V
    .locals 4

    .prologue
    const v3, 0x7f090035

    .line 422
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 424
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 427
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 428
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 429
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 431
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->updateWind(II)V

    .line 432
    return-void
.end method

.method public setVentilateModel()V
    .locals 4

    .prologue
    const v3, 0x7f090036

    .line 446
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->moduleStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->tempCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->du:Landroid/widget/ImageView;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 450
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->cold:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 451
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->hot:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 452
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->are:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 453
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->ventilate:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 454
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoModel:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 455
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->model:I

    iget v1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->windLevel:I

    invoke-virtual {p0, v0, v1}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->updateWind(II)V

    .line 456
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

    .line 473
    if-ne p1, v0, :cond_4

    .line 474
    if-ne p2, v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 476
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 477
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 478
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    if-ne p2, v1, :cond_2

    .line 480
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 481
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 482
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 483
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 484
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 486
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 487
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 489
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 491
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 492
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 493
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 495
    :cond_4
    if-ne p1, v1, :cond_8

    .line 496
    if-ne p2, v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 498
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 499
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 500
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 501
    :cond_5
    if-ne p2, v1, :cond_6

    .line 502
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 503
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 504
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 505
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 506
    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 507
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 508
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 509
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 510
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 511
    :cond_7
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 513
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 514
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 515
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 518
    :cond_8
    if-ne p2, v0, :cond_9

    .line 519
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 520
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 521
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 522
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 523
    :cond_9
    if-ne p2, v1, :cond_a

    .line 524
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 525
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 526
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 527
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 528
    :cond_a
    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 529
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 531
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 532
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 533
    :cond_b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->oneLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 535
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->twoLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 536
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->threeLevel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 537
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->autoLevel:Landroid/widget/ImageView;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
