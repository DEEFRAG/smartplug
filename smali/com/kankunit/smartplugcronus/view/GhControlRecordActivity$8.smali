.class Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$8;
.super Ljava/lang/Object;
.source "GhControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->finish()V

    .line 695
    const/4 v0, 0x1

    return v0
.end method
