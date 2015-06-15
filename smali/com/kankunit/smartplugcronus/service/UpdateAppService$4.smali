.class Lcom/kankunit/smartplugcronus/service/UpdateAppService$4;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$4;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/UpdateAppService$4;->this$0:Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/service/UpdateAppService;->stopSelf()V

    .line 222
    return-void
.end method
