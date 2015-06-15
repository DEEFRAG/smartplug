.class Lcom/kankunit/smartplugcronus/view/MenuActivity$11;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;->doNewVersionUpdate()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1554
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 1555
    const-class v2, Lcom/kankunit/smartplugcronus/service/UpdateService;

    .line 1554
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1556
    .local v0, "updateIntent":Landroid/content/Intent;
    const-string v1, "titleId"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget v2, v2, Lcom/kankunit/smartplugcronus/view/MenuActivity;->newVerCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1558
    return-void
.end method
