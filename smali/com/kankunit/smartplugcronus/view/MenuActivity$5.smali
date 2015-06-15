.class Lcom/kankunit/smartplugcronus/view/MenuActivity$5;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


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

.field private final synthetic val$fInstallationId:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->val$fInstallationId:Ljava/lang/String;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save AVOS information"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v1, "avosinfo"

    .line 476
    const-string v2, "isAVOSUploaded"

    const-string v3, "yes"

    .line 475
    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const-string v1, "avosinfo"

    .line 478
    const-string v2, "installationId"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$5;->val$fInstallationId:Ljava/lang/String;

    .line 477
    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    return-void
.end method
