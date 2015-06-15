.class Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;
.super Ljava/lang/Object;
.source "AddSceneAboveListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    iput p2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;->val$index:I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    iget v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$4;->val$index:I

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->deleteItemId(I)V

    .line 173
    return-void
.end method
