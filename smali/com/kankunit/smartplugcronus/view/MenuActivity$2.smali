.class Lcom/kankunit/smartplugcronus/view/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->ShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MenuActivity;->progressDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MenuActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 169
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    :cond_0
    return-void
.end method
