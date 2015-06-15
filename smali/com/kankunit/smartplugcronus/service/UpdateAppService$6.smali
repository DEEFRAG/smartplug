.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$6;
.super Ljava/lang/Object;
.source "UpdateAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/UpdateAppService;->down()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$6;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$6;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$6;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->update()V

    .line 304
    return-void
.end method
