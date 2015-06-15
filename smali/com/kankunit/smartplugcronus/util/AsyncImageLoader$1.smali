.class Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

.field private final synthetic val$imageCallback:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;->this$0:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;->val$imageCallback:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;->val$imageCallback:Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/kankunit/smartplugcronus/util/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 34
    return-void
.end method
