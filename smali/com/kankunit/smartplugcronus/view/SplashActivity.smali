.class public Lcom/kankunit/smartplugcronus/view/SplashActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SplashActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final SPLASH_DISPLAY_LENGHT:I

.field private handler:Landroid/os/Handler;

.field private isNetOk:Z

.field private isTimeOver:Z

.field private timeroutTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 34
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->SPLASH_DISPLAY_LENGHT:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SplashActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->timeroutTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isNetOk:Z

    return v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->timeroutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/SplashActivity;Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isNetOk:Z

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/SplashActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isTimeOver:Z

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 170
    iget-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isNetOk:Z

    if-nez v1, :cond_0

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isTimeOver:Z

    .line 172
    new-instance v0, Landroid/content/Intent;

    .line 173
    const-class v1, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 172
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->finish()V

    .line 177
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->timeroutTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 179
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isTimeOver:Z

    .line 54
    iput-boolean v5, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->isNetOk:Z

    .line 55
    const v5, 0x7f0300dd

    invoke-virtual {p0, v5}, Lcom/kankunit/smartplugcronus/view/SplashActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 58
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/SplashActivity;->handler:Landroid/os/Handler;

    .line 60
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "phoneMac":Ljava/lang/String;
    const-string v5, ":"

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getAllDevice(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    const-string v3, ""

    .line 64
    .local v3, "msg":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 70
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 71
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    :try_start_0
    new-instance v5, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v5}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "synchroFriends:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/SplashActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/SplashActivity;)V

    .line 163
    const-wide/16 v7, 0xbb8

    .line 82
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void

    .line 64
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 65
    .local v0, "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/DataUtil;->checkMac(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 77
    .end local v0    # "deviceModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 47
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 42
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 43
    return-void
.end method
