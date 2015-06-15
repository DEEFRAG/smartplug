.class Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/customview/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    .line 96
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$2(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;Z)V

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->invalidate()V

    .line 104
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->requestLayout()V

    .line 105
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    # invokes: Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->access$3(Lcom/kankunit/smartplugcronus/customview/HorizontalListView;)V

    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->invalidate()V

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$1;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->requestLayout()V

    .line 112
    return-void
.end method
