.class Lcom/kankunit/smartplugcronus/customview/OpenFolder$2$1;
.super Ljava/lang/Object;
.source "OpenFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2$1;->this$1:Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2$1;->this$1:Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->this$0:Lcom/kankunit/smartplugcronus/customview/OpenFolder;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;->access$0(Lcom/kankunit/smartplugcronus/customview/OpenFolder$2;)Lcom/kankunit/smartplugcronus/customview/OpenFolder;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/customview/OpenFolder;->container:Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder;->access$1(Lcom/kankunit/smartplugcronus/customview/OpenFolder;)Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/OpenFolder$OpenFolderContainer;->removeAllViews()V

    .line 113
    return-void
.end method
