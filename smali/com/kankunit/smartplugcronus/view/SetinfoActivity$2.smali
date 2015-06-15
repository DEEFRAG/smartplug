.class Lcom/kankunit/smartplugcronus/view/SetinfoActivity$2;
.super Ljava/lang/Object;
.source "SetinfoActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SetinfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
    .locals 6
    .param p1, "wiperSwitch"    # Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .param p2, "checkState"    # Z

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 73
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 75
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    const-string v4, "x"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "x"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method
