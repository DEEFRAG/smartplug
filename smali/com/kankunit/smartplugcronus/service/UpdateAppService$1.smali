.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;
.super Ljava/lang/Object;
.source "UpdateAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 337
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$1;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->stopSelf()V

    .line 343
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
