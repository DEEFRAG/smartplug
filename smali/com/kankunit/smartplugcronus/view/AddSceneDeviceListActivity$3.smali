.class Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$3;
.super Ljava/lang/Object;
.source "AddSceneDeviceListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;->finish()V

    .line 407
    const/4 v0, 0x1

    return v0
.end method
