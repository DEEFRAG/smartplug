.class public Lcom/kankunit/smartplugcronus/view/TestActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "TestActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/TestActivity$sendMessageThread;,
        Lcom/kankunit/smartplugcronus/view/TestActivity$waitTextThread;
    }
.end annotation


# instance fields
.field cancelImage:Landroid/widget/ImageButton;

.field private checkCondition:Ljava/util/concurrent/locks/Condition;

.field private handler:Landroid/os/Handler;

.field isWait:Z

.field private lock:Ljava/util/concurrent/locks/Lock;

.field public mac:Ljava/lang/String;

.field mainLayout:Landroid/view/View;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private operateCondition:Ljava/util/concurrent/locks/Condition;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;

.field waitTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 46
    const-string v0, "28-d9-8a-00-42-9d"

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->mac:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->isWait:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/TestActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/TestActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public check(I)V
    .locals 12
    .param p1, "i"    # I

    .prologue
    const/4 v6, 0x0

    .line 278
    const-string v11, "dsens#on"

    .line 279
    .local v11, "flagString":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 280
    const-string v11, "dsens#off"

    .line 284
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->mac:Ljava/lang/String;

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

    .line 287
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%password%check#3035#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->handler:Landroid/os/Handler;

    const-string v7, ""

    move-object v3, p0

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 291
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 292
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 293
    if-nez v9, :cond_1

    .line 294
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->isWait:Z

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TestActivity;->check(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v9    # "b":Z
    :cond_1
    :goto_1
    return-void

    .line 281
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "phoneMac":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 282
    const-string v11, "dring"

    goto :goto_0

    .line 298
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v5    # "phoneMac":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 300
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public checkFriendsStatus()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 184
    const-string v1, "xx@getFriendsStatus.kankun-smartplug.com"

    .line 185
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%nopassword%getfriend%freq"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    const-string v7, "getFriendsStatus"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-object v3, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 187
    return-void
.end method

.method public doReceive(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    const-string v1, "msgBody"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/TestActivity;->doReceive(Ljava/lang/String;)V

    .line 315
    const-string v1, "ring"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    :cond_0
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 5
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 321
    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "sArr":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "operate#3035#learn#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 327
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 328
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 330
    :cond_2
    aget-object v1, v0, v3

    const-string v2, "check#3035#learn#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, v0, v3

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 333
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 334
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 336
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 337
    iput-boolean v4, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->isWait:Z

    .line 338
    aget-object v1, v0, v3

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const-string v1, "Learning error"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public doWhenTimeOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 350
    return-void
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    .line 65
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v6, 0x7f0300e1

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->setContentView(I)V

    .line 68
    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    .line 69
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    .line 70
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->checkCondition:Ljava/util/concurrent/locks/Condition;

    .line 72
    new-instance v6, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v6, p0, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>(Lcom/kankunit/smartplugcronus/minautil/MinaListener;Lcom/kankunit/smartplugcronus/minautil/MinaResponseTimeOutListener;)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 74
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 75
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0300f6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindowView:Landroid/view/View;

    .line 76
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xe6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 78
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindowView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindowView:Landroid/view/View;

    const v7, 0x7f07033c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->waitTextView:Landroid/widget/TextView;

    .line 80
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindowView:Landroid/view/View;

    const v7, 0x7f070146

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->cancelImage:Landroid/widget/ImageButton;

    .line 81
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindowView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v9, v9, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 82
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->popupWindow:Landroid/widget/PopupWindow;

    const v7, 0x7f0d00a8

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 84
    const v6, 0x7f0700ee

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->mainLayout:Landroid/view/View;

    .line 86
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->cancelImage:Landroid/widget/ImageButton;

    new-instance v7, Lcom/kankunit/smartplugcronus/view/TestActivity$1;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/TestActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v6, Lcom/kankunit/smartplugcronus/view/TestActivity$2;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/TestActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    iput-object v6, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->handler:Landroid/os/Handler;

    .line 137
    const v6, 0x7f070376

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 138
    .local v1, "button1":Landroid/widget/Button;
    const v6, 0x7f070377

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 139
    .local v2, "button2":Landroid/widget/Button;
    const v6, 0x7f070378

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 140
    .local v3, "button3":Landroid/widget/Button;
    const v6, 0x7f070379

    invoke-virtual {p0, v6}, Lcom/kankunit/smartplugcronus/view/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 142
    .local v4, "button4":Landroid/widget/Button;
    new-instance v6, Lcom/kankunit/smartplugcronus/view/TestActivity$3;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/TestActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v6, Lcom/kankunit/smartplugcronus/view/TestActivity$4;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/TestActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    new-instance v6, Lcom/kankunit/smartplugcronus/view/TestActivity$5;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/TestActivity$5;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v6, Lcom/kankunit/smartplugcronus/view/TestActivity$6;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/TestActivity$6;-><init>(Lcom/kankunit/smartplugcronus/view/TestActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method public quit()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->mac:Ljava/lang/String;

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

    .line 193
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%password%operate#3035#quit%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v7, ""

    move-object v3, p0

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 195
    return-void
.end method

.method public receiveMsg(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 354
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 355
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 356
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 359
    return-void
.end method

.method public startOperate(I)V
    .locals 12
    .param p1, "i"    # I

    .prologue
    const/4 v6, 0x0

    .line 247
    const-string v11, "dsens#on"

    .line 248
    .local v11, "flagString":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 249
    const-string v11, "dsens#off"

    .line 253
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "phoneMac":Ljava/lang/String;
    const-string v0, ":"

    const-string v3, "-"

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->mac:Ljava/lang/String;

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

    .line 256
    .local v1, "address":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%password%operate#3035#learn#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%uart"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->handler:Landroid/os/Handler;

    const-string v7, ""

    move-object v3, p0

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->operateCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v3, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 261
    .local v9, "b":Z
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 262
    if-nez v9, :cond_3

    .line 263
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/TestActivity;->isWait:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TestActivity;->startOperate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v9    # "b":Z
    :cond_1
    :goto_1
    return-void

    .line 250
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "phoneMac":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 251
    const-string v11, "dring"

    goto :goto_0

    .line 267
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v5    # "phoneMac":Ljava/lang/String;
    .restart local v9    # "b":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/kankunit/smartplugcronus/view/TestActivity;->check(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 269
    .end local v9    # "b":Z
    :catch_0
    move-exception v10

    .line 271
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
