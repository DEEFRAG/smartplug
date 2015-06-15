.class Lcom/kankunit/smartplugcronus/view/MenuActivity$6;
.super Lcom/avos/avoscloud/SaveCallback;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 488
    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 491
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 493
    return-void
.end method
