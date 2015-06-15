.class Lcom/kankunit/smartplugcronus/customview/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->onLayout(ZIIII)V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/HorizontalListView$3;->this$0:Lcom/kankunit/smartplugcronus/customview/HorizontalListView;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/HorizontalListView;->requestLayout()V

    .line 204
    return-void
.end method
