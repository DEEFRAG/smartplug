.class Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$5;
.super Ljava/lang/Object;
.source "AddShortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->finish()V

    .line 314
    const/4 v0, 0x1

    return v0
.end method
