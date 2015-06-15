.class Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;
.super Ljava/lang/Object;
.source "CurtainControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->isWait:Z

    .line 232
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->quit()V

    .line 233
    return-void
.end method
