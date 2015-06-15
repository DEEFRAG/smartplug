.class Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;
.super Ljava/lang/Object;
.source "SetinfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;)Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Downloading device data..."

    const/16 v4, 0x7530

    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5$1;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 361
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->sendDownDeviceMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 362
    return-void
.end method
