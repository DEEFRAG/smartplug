.class public Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/view/HelpActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 112
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 113
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;->this$0:Lcom/kankunit/smartplugcronus/view/HelpActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
