.class Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/LoadingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/LoadingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->access$0(Lcom/kankunit/smartplugcronus/view/LoadingActivity;Z)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    .line 54
    const-class v2, Lcom/kankunit/smartplugcronus/view/LoginActivity;

    .line 52
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "mainIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/LoadingActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/LoadingActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/LoadingActivity;->finish()V

    .line 57
    return-void
.end method
