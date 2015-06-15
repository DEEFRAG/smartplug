.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->showOffLineDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 900
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 901
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 902
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-string v2, "http://chuchang.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 904
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 905
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->startActivity(Landroid/content/Intent;)V

    .line 919
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 907
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 908
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const-string v2, "http://lixian.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 911
    .restart local v0    # "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 912
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 914
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->dialogPop:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 916
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Landroid/widget/PopupWindow;)V

    goto :goto_0
.end method
