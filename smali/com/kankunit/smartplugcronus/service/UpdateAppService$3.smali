.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;
.super Ljava/lang/Object;
.source "UpdateAppService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService;->doNewVersionUpdate()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;)Lcom/kankunit/smartplugcronus/service/UpdateAppService;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    .line 188
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3$1;-><init>(Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 200
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 203
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 204
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 205
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 206
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 207
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    # getter for: Lcom/kankunit/smartplugcronus/service/UpdateAppService;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->access$5(Lcom/kankunit/smartplugcronus/service/UpdateAppService;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 208
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$3;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    const-string v1, "http://app.ikonke.com/ikonke.apk"

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->downFile(Ljava/lang/String;)V

    .line 212
    return-void
.end method
