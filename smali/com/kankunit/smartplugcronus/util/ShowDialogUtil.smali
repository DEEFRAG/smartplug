.class public Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;
.super Ljava/lang/Object;
.source "ShowDialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showCancelAbleDialog(Landroid/app/ProgressDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "myDialog"    # Landroid/app/ProgressDialog;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance p0, Landroid/app/ProgressDialog;

    .end local p0    # "myDialog":Landroid/app/ProgressDialog;
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 36
    .restart local p0    # "myDialog":Landroid/app/ProgressDialog;
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil$2;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 42
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 44
    invoke-virtual {p0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 47
    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 48
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 50
    return-object p0
.end method

.method public static showDialog(Landroid/app/ProgressDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "myDialog"    # Landroid/app/ProgressDialog;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    new-instance p0, Landroid/app/ProgressDialog;

    .end local p0    # "myDialog":Landroid/app/ProgressDialog;
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 16
    .restart local p0    # "myDialog":Landroid/app/ProgressDialog;
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil$1;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 23
    invoke-virtual {p0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 25
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 27
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 28
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    .line 29
    return-object p0
.end method

.method public static showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "timeOut"    # I
    .param p4, "timeoutListener"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;

    .prologue
    .line 68
    move-object v0, p0

    .line 69
    .local v0, "fContext":Landroid/content/Context;
    int-to-long v2, p3

    invoke-static {p0, v2, v3, p4}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->createProgressDialog(Landroid/content/Context;JLcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v1

    .line 71
    .local v1, "mProgressDialog":Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-virtual {v1, p2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->setCancelable(Z)V

    .line 73
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->show()V

    .line 74
    return-object v1
.end method
