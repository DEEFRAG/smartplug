.class Lcom/kankunit/smartplugcronus/view/GarageControlActivity$4;
.super Ljava/lang/Object;
.source "GarageControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/GarageControlActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->isWait:Z

    .line 211
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->quit()V

    .line 212
    return-void
.end method
