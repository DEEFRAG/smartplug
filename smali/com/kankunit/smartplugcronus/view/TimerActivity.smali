.class public Lcom/kankunit/smartplugcronus/view/TimerActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "TimerActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;


# static fields
.field private static same:Ljava/lang/String;


# instance fields
.field private deleteIndex:I

.field private fastFlag:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isDelete:Z

.field private isDirect:Z

.field private isOpen:[Z

.field private listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

.field private listItem_task:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mac:Ljava/lang/String;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private pwd:Ljava/lang/String;

.field private timer_notimer:Landroid/widget/TextView;

.field private timer_title_clock:Landroid/widget/ImageView;

.field private timerid:Ljava/lang/String;

.field private timerlistitem:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 62
    iput v1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteIndex:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->fastFlag:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z

    .line 67
    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDelete:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItem_task:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TimerActivity;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->updateTimerlist(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/TimerActivity;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteTimerlist(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z

    return v0
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->doAdd()V

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/TimerActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/TimerActivity;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteIndex:I

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/TimerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/TimerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/TimerActivity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDelete:Z

    return-void
.end method

.method private deleteTimerlist(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 313
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/kankunit/smartplugcronus/view/TimerActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;ILandroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/view/TimerActivity$4;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 382
    return-void
.end method

.method private doAdd()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 84
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-ne v2, v6, :cond_1

    :cond_0
    sget v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    .line 85
    const-string v2, "Supports up to 32 scheduled task"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 111
    :goto_0
    return-void

    .line 87
    :cond_1
    sget v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 88
    const-string v2, "Supports a maximum of eight scheduled tasks"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "timerid"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "openTime"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "closetime"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "repartDate"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "flag"

    const-string v3, "add"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "type"

    const-string v3, "timer"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "num"

    sget v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "isDirect"

    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v2, "fastFlag"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->fastFlag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private doReceviMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "bsgMsg"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 472
    .local v0, "message":Landroid/os/Message;
    const-string v1, "tack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 474
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    :cond_0
    return-void
.end method

.method private initBg()V
    .locals 5

    .prologue
    .line 158
    const v3, 0x7f070091

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 159
    .local v2, "timerset_mainbg":Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    .line 160
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 164
    const v4, 0x7f0201af

    .line 163
    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/BitmapUtil;->makeBitMap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 166
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 10

    .prologue
    .line 247
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v9, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 249
    const-string v0, "fastFlag"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->fastFlag:Ljava/lang/String;

    .line 250
    const-string v0, "mac"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 252
    const-string v0, "pwd"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;

    .line 253
    const-string v0, "isDirect"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z

    .line 254
    const v0, 0x7f070382

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 255
    .local v3, "timerlistitems":Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->loadData()V

    .line 265
    new-instance v0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItem_task:Ljava/util/ArrayList;

    .line 266
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isOpen:[Z

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;Ljava/util/ArrayList;Landroid/widget/ListView;[ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 265
    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    .line 267
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerlistitem:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 171
    const v0, 0x7f070382

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerlistitem:Landroid/widget/ListView;

    .line 172
    const v0, 0x7f070380

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timer_title_clock:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f070381

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timer_notimer:Landroid/widget/TextView;

    .line 174
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->initBg()V

    .line 175
    return-void
.end method

.method private loadData()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    .line 190
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItem_task:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 191
    sget v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    new-array v11, v11, [Z

    iput-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isOpen:[Z

    .line 192
    sget v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-gtz v11, :cond_0

    .line 193
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timer_notimer:Landroid/widget/TextView;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timer_title_clock:Landroid/widget/ImageView;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerlistitem:Landroid/widget/ListView;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 202
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-lt v1, v11, :cond_1

    .line 244
    return-void

    .line 197
    .end local v1    # "i":I
    :cond_0
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timer_notimer:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timer_title_clock:Landroid/widget/ImageView;

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerlistitem:Landroid/widget/ListView;

    invoke-virtual {v11, v13}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 203
    .restart local v1    # "i":I
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v11, v11, v1

    if-nez v11, :cond_2

    .line 202
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "~~~!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    sget-object v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v0, v11, v1

    .line 209
    .local v0, "back_detail_item":Ljava/lang/String;
    const-string v11, "#"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "itemInfo":[Ljava/lang/String;
    aget-object v6, v2, v14

    .line 211
    .local v6, "itemInfo_id":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v5, v2, v11

    .line 212
    .local v5, "itemInfo_en":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v7, v2, v11

    .line 213
    .local v7, "itemInfo_opentime":Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v8, v2, v11

    .line 214
    .local v8, "itemInfo_opentime_en":Ljava/lang/String;
    const/4 v11, 0x5

    aget-object v3, v2, v11

    .line 215
    .local v3, "itemInfo_closetime":Ljava/lang/String;
    const/4 v11, 0x6

    aget-object v4, v2, v11

    .line 216
    .local v4, "itemInfo_closetime_en":Ljava/lang/String;
    const/4 v11, 0x7

    aget-object v9, v2, v11

    .line 217
    .local v9, "itemInfo_repart":Ljava/lang/String;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/util/TimerUtil;->getMiniRepeat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    const-string v11, "n"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 221
    const-string v11, "OnTime"

    const-string v12, "--:--"

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_3
    const-string v11, "n"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 226
    const-string v11, "offTime"

    const-string v12, "--:--"

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_4
    const-string v11, "id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v11, "timerid"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v11, "close_realtime"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v11, "open_realtime"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v11, "itemInfo_opentime_en"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v11, "itemInfo_closetime_en"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v11, "y"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 237
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isOpen:[Z

    aput-boolean v14, v11, v1

    .line 241
    :goto_5
    const-string v11, "repart_data"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItem_task:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 223
    :cond_3
    const-string v11, "OnTime"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 228
    :cond_4
    const-string v11, "offTime"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 239
    :cond_5
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isOpen:[Z

    aput-boolean v13, v11, v1

    goto :goto_5
.end method

.method private updateTimerlist(Landroid/view/View;I)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 271
    const v17, 0x7f070384

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 272
    .local v7, "id":Landroid/widget/TextView;
    const v17, 0x7f070387

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 273
    .local v10, "ontime":Landroid/widget/TextView;
    const v17, 0x7f070388

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 274
    .local v9, "offtime":Landroid/widget/TextView;
    const v17, 0x7f07038f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 275
    .local v14, "reData":Landroid/widget/TextView;
    const v17, 0x7f070385

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 276
    .local v11, "openEn":Landroid/widget/TextView;
    const v17, 0x7f070386

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 278
    .local v4, "clsoeEn":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "opentime":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 310
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "closetime":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 284
    .local v15, "repartDate":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 285
    .local v16, "timerid":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 286
    .local v12, "open_En":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "clsoe_En":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v17, "timerid"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v17, "openTime"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v17, "closetime"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v17, "repartDate"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v17, "openEn"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v17, "closeEn"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v17, "flag"

    const-string v18, "update"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v17, "fastFlag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->fastFlag:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v17, "mac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->mac:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v17, "pwd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->pwd:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v17, "type"

    const-string v18, "timer"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v17, "direct"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDirect:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-string v17, "num"

    sget v18, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget v17, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    move/from16 v0, v17

    if-lt v6, v0, :cond_1

    .line 306
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v8, "intent":Landroid/content/Intent;
    const-class v17, Lcom/kankunit/smartplugcronus/view/TimerSetActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    invoke-virtual {v8, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v18, v18, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public deleteTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 1
    .param p1, "openTime"    # Ljava/lang/String;
    .param p2, "closeTime"    # Ljava/lang/String;
    .param p3, "timerid"    # Ljava/lang/String;
    .param p4, "repart"    # Ljava/lang/String;
    .param p5, "isOpen"    # Z
    .param p6, "openen"    # Ljava/lang/String;
    .param p7, "closeen"    # Ljava/lang/String;
    .param p8, "userMac"    # Ljava/lang/String;
    .param p9, "myDialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 448
    iput-object p9, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDelete:Z

    .line 455
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 443
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 463
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kankunit/smartplugcronus/view/TimerActivity;->same:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v6

    .line 389
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kankunit/smartplugcronus/view/TimerActivity;->same:Ljava/lang/String;

    .line 390
    sget-boolean v2, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isSwitchClick:Z

    if-eqz v2, :cond_2

    .line 391
    sput-boolean v6, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->isSwitchClick:Z

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    if-lt v0, v2, :cond_5

    .line 399
    .end local v0    # "i":I
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v2, :cond_3

    .line 402
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 404
    :cond_3
    iget-boolean v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->isDelete:Z

    if-eqz v2, :cond_0

    .line 405
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteIndex:I

    sget v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7

    .line 406
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 407
    sget v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    .line 421
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->loadData()V

    .line 422
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->listItemAdapter_task:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->notifyDataSetChanged()V

    goto :goto_0

    .line 393
    .restart local v0    # "i":I
    :cond_5
    sget-object v2, Lcom/kankunit/smartplugcronus/view/TimerActivity;->same:Ljava/lang/String;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    sget-object v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 394
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    sget-object v3, Lcom/kankunit/smartplugcronus/view/TimerActivity;->same:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 392
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    .end local v0    # "i":I
    :cond_7
    const/4 v1, 0x0

    .line 410
    .local v1, "isDeleteOk":Z
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->deleteIndex:I

    .restart local v0    # "i":I
    :goto_3
    sget v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_8

    .line 416
    if-eqz v1, :cond_4

    .line 417
    sget v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeLength:I

    goto :goto_2

    .line 411
    :cond_8
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 412
    const/4 v1, 0x1

    .line 414
    :cond_9
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    sget-object v3, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->timeList:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 426
    .end local v0    # "i":I
    .end local v1    # "isDeleteOk":Z
    :pswitch_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    if-eqz v2, :cond_a

    .line 427
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 429
    :cond_a
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initHongMiHeader()V
    .locals 6

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f070077

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 484
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    new-instance v4, Lcom/kankunit/smartplugcronus/view/TimerActivity$5;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    const v4, 0x7f070076

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 492
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v4, Lcom/kankunit/smartplugcronus/view/TimerActivity$6;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    const v4, 0x7f070078

    invoke-virtual {p0, v4}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 500
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const v4, 0x7f0203db

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 501
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    new-instance v4, Lcom/kankunit/smartplugcronus/view/TimerActivity$7;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$7;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v0, 0x7f0300e4

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->handler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 137
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->initView()V

    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerlistitem:Landroid/widget/ListView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/TimerActivity$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TimerActivity;->timerlistitem:Landroid/widget/ListView;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/TimerActivity$2;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/TimerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 155
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->finish()V

    .line 120
    :goto_0
    return v2

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->doAdd()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 186
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->initData()V

    .line 180
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 181
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 439
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onStop()V

    .line 440
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "backMsg"    # Ljava/lang/Object;

    .prologue
    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/kankunit/smartplugcronus/view/TimerActivity;->doReceviMsg(Ljava/lang/String;)V

    .line 468
    return-void
.end method
