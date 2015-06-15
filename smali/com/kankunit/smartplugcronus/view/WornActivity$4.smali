.class Lcom/kankunit/smartplugcronus/view/WornActivity$4;
.super Ljava/lang/Object;
.source "WornActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/WornActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/WornActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    .local v0, "cs":J
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->lastClickTime:J
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$9(Lcom/kankunit/smartplugcronus/view/WornActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->clickNum:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$10(Lcom/kankunit/smartplugcronus/view/WornActivity;)I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    .line 172
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/WornActivity;->clickNum:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$10(Lcom/kankunit/smartplugcronus/view/WornActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$11(Lcom/kankunit/smartplugcronus/view/WornActivity;I)V

    .line 218
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/WornActivity;->doStart()V
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$12(Lcom/kankunit/smartplugcronus/view/WornActivity;)V

    .line 210
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$11(Lcom/kankunit/smartplugcronus/view/WornActivity;I)V

    .line 211
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$13(Lcom/kankunit/smartplugcronus/view/WornActivity;J)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/WornActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-static {v2, v0, v1}, Lcom/kankunit/smartplugcronus/view/WornActivity;->access$13(Lcom/kankunit/smartplugcronus/view/WornActivity;J)V

    goto :goto_0
.end method
