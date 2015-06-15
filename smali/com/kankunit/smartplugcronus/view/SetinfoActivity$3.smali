.class Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;
.super Ljava/lang/Object;
.source "SetinfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 86
    sget-boolean v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->isUpdate:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    const-string v1, "The current version is up to date"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
