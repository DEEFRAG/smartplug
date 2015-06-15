.class Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;
.super Ljava/lang/Object;
.source "SetinfoFragment.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

.field private final synthetic val$pwdSp:Landroid/content/SharedPreferences;

.field private final synthetic val$set_pwd_sbt:Lcom/kankunit/smartplugcronus/customview/SwitchButton;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;Lcom/kankunit/smartplugcronus/customview/SwitchButton;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->val$set_pwd_sbt:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->val$pwdSp:Landroid/content/SharedPreferences;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 3
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 237
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->val$set_pwd_sbt:Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/view/GestureEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 243
    .end local v0    # "it":Landroid/content/Intent;
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;->val$pwdSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasPwd"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
