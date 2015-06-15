.class public Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "UpdateFirewareActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;
    }
.end annotation


# static fields
.field private static final SERVER_HOST_IP:Ljava/lang/String; = "192.168.145.253"


# instance fields
.field private fileLength:I

.field private inputFileStream:Ljava/io/FileInputStream;

.field private mHandler:Landroid/os/Handler;

.field private myDialog:Landroid/app/ProgressDialog;

.field private preWifiName:Ljava/lang/String;

.field private update_firmware_btn:Landroid/widget/Button;

.field private wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

.field private wifiIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiIndex:I

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->fileLength:I

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->inputFileStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->preWifiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiIndex:I

    return-void
.end method

.method static synthetic access$7(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiIndex:I

    return v0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "255"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->myDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 86
    :pswitch_0
    const-string v0, "Update successful"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "Update failed"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "k2.bin"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->inputFileStream:Ljava/io/FileInputStream;

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->fileLength:I

    .line 72
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->myDialog:Landroid/app/ProgressDialog;

    const-string v4, "Update"

    const-string v5, "Please wait"

    invoke-static {v3, p0, v4, v5}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showDialog(Landroid/app/ProgressDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->myDialog:Landroid/app/ProgressDialog;

    .line 73
    new-instance v2, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;-><init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;)V

    .line 74
    .local v2, "upThread":Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "upThread":Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity$UpdateThread;
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/kankunit/smartplugcronus/util/AlertUtil;->nomalAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->setContentView(I)V

    .line 60
    new-instance v0, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    .line 61
    const v0, 0x7f070397

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->update_firmware_btn:Landroid/widget/Button;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->mHandler:Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->update_firmware_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewareActivity;->preWifiName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 53
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 49
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 50
    return-void
.end method
