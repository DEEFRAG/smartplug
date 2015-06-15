.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;
.super Ljava/lang/Object;
.source "DeviceFragment_bak.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 5
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsOnline(I)V

    .line 204
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->currentDeviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$5(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v2

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v0

    .line 206
    .local v0, "cModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 208
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    # invokes: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->loadListData()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$6(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V

    .line 211
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$1;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 213
    return-void
.end method
