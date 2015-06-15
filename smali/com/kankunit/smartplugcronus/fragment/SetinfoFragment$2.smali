.class Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$2;
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


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 6
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 220
    const-string v4, "vibrator"

    .line 219
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    check-cast v2, Landroid/os/Vibrator;

    .line 221
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 223
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 224
    const-string v4, "x"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "x"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method
