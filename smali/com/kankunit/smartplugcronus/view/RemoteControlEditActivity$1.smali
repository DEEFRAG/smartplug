.class Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity$1;
.super Ljava/lang/Object;
.source "RemoteControlEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->createDragImage(Landroid/graphics/Bitmap;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlEditActivity;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 251
    return-void
.end method
