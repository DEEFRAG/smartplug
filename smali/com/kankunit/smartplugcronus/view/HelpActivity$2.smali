.class Lcom/kankunit/smartplugcronus/view/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "flag"

    const-string v2, "ap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->finish()V

    .line 70
    return-void
.end method
