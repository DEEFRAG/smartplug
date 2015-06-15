.class Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/LoadingActivity;->isOpen:Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->access$1(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    move-result-object v1

    .line 113
    const-class v2, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 111
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "mainIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2$1;->this$1:Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;

    # getter for: Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;->access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity$2;)Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->finish()V

    .line 117
    .end local v0    # "mainIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
