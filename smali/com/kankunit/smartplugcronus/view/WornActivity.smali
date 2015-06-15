.class public Lcom/kankunit/smartplugcronus/view/WornActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "WornActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;
    }
.end annotation


# instance fields
.field private clickNum:I

.field private configBack:Z

.field private fileLength:I

.field private hiddenUpdate:Landroid/widget/ImageButton;

.field private inputFileStream:Ljava/io/FileInputStream;

.field private lastClickTime:J

.field private mHandler:Landroid/os/Handler;

.field private myDialog:Landroid/app/ProgressDialog;

.field private preWifiName:Ljava/lang/String;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    .line 58
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->fileLength:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->inputFileStream:Ljava/io/FileInputStream;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->lastClickTime:J

    .line 62
    iput v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->clickNum:I

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/WornActivity;)Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->inputFileStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kankunit/smartplugcronus/view/WornActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->clickNum:I

    return v0
.end method

.method static synthetic access$11(Lcom/kankunit/smartplugcronus/view/WornActivity;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->clickNum:I

    return-void
.end method

.method static synthetic access$12(Lcom/kankunit/smartplugcronus/view/WornActivity;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->doStart()V

    return-void
.end method

.method static synthetic access$13(Lcom/kankunit/smartplugcronus/view/WornActivity;J)V
    .locals 0

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->lastClickTime:J

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/WornActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->preWifiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/WornActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/WornActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->preWifiName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/WornActivity;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->fileLength:I

    return v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/WornActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kankunit/smartplugcronus/view/WornActivity;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->configBack:Z

    return-void
.end method

.method static synthetic access$9(Lcom/kankunit/smartplugcronus/view/WornActivity;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->lastClickTime:J

    return-wide v0
.end method

.method private doStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 82
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 83
    const-string v6, "kkeps.bin"

    .line 82
    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x1

    .line 89
    .local v4, "fileOk":Z
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->inputFileStream:Ljava/io/FileInputStream;

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->fileLength:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    if-nez v4, :cond_0

    .line 96
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    const-string v6, "Tips"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 98
    const-string v6, "Upgrade file does not exist"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 101
    const-string v6, "Confirm"

    new-instance v7, Lcom/kankunit/smartplugcronus/view/WornActivity$1;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/view/WornActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/WornActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 106
    .local v0, "alertDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 156
    .end local v0    # "alertDialog":Landroid/app/Dialog;
    :goto_1
    return-void

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 93
    const/4 v4, 0x0

    goto :goto_0

    .line 110
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    const-string v5, "ok"

    new-instance v6, Lcom/kankunit/smartplugcronus/view/WornActivity$2;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/WornActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/WornActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 147
    const-string v5, "Cancel"

    .line 148
    new-instance v6, Lcom/kankunit/smartplugcronus/view/WornActivity$3;

    invoke-direct {v6, p0}, Lcom/kankunit/smartplugcronus/view/WornActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/WornActivity;)V

    .line 147
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public initHongMiHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z

    .line 542
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 161
    const v0, 0x7f0300fc

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->setContentView(I)V

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 164
    const v0, 0x7f0703c3

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->hiddenUpdate:Landroid/widget/ImageButton;

    .line 165
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity;->hiddenUpdate:Landroid/widget/ImageButton;

    new-instance v1, Lcom/kankunit/smartplugcronus/view/WornActivity$4;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/view/WornActivity$4;-><init>(Lcom/kankunit/smartplugcronus/view/WornActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WornActivity;->finish()V

    .line 79
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 71
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 66
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 67
    return-void
.end method
