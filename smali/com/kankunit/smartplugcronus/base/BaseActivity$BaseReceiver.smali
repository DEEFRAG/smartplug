.class Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/base/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/base/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/base/BaseActivity;Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/base/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/base/BaseActivity;

    invoke-virtual {v0, p2}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->doReceive(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
