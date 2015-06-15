.class Lcom/kankunit/smartplugcronus/view/WornActivity$2;
.super Ljava/lang/Object;
.source "WornActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/WornActivity;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/WornActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/WornActivity$2;)Lcom/kankunit/smartplugcronus/view/WornActivity;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$3(Lcom/kankunit/smartplugcronus/view/WornActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$4(Lcom/kankunit/smartplugcronus/view/WornActivity;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->wifiAdmin:Lcom/kankunit/smartplugcronus/jni/WifiAdmin;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$3(Lcom/kankunit/smartplugcronus/view/WornActivity;)Lcom/kankunit/smartplugcronus/jni/WifiAdmin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/jni/WifiAdmin;->checkState()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    .local v0, "msgDisable":Landroid/os/Message;
    const-string v2, "wifiDisable"

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$0(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    .end local v0    # "msgDisable":Landroid/os/Message;
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v1, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->fileLength:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$5(Lcom/kankunit/smartplugcronus/view/WornActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->inputFileStream:Ljava/io/FileInputStream;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$1(Lcom/kankunit/smartplugcronus/view/WornActivity;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;-><init>(Lcom/kankunit/smartplugcronus/view/WornActivity;ILjava/io/InputStream;)V

    .line 124
    .local v1, "upThread":Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/WornActivity$UpdateThread;->start()V

    .line 125
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    new-instance v3, Landroid/app/ProgressDialog;

    .line 126
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$6(Lcom/kankunit/smartplugcronus/view/WornActivity;Landroid/app/ProgressDialog;)V

    .line 127
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    new-instance v3, Lcom/kankunit/smartplugcronus/view/WornActivity$2$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/WornActivity$2$1;-><init>(Lcom/kankunit/smartplugcronus/view/WornActivity$2;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 135
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 137
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 140
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 142
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 143
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->myDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$7(Lcom/kankunit/smartplugcronus/view/WornActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0
.end method
