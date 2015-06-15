.class Lcom/kankunit/smartplugcronus/view/SetinfoActivity$1;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SetinfoActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
