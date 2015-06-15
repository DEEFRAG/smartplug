.class Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$1;
.super Ljava/lang/Object;
.source "TimerAdapt.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->setImgWithUrl(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->listView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;->access$0(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt;)Landroid/widget/ListView;

    move-result-object v1

    .line 90
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, "imageViewByTag":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    return-void
.end method
