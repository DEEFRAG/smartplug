.class Lorg/videolan/vlc/gui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v8, 0x7f070296

    const v7, 0x7f0700f9

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lorg/videolan/vlc/gui/MainActivity;->access$7(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    .line 239
    .local v1, "entry":Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 241
    .local v0, "current":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I
    invoke-static {v3}, Lorg/videolan/vlc/gui/MainActivity;->access$8(Lorg/videolan/vlc/gui/MainActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v3, v7}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 244
    :cond_1
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v3}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/videolan/vlc/gui/MainActivity;->access$7(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 281
    :cond_2
    :goto_0
    return-void

    .line 249
    :cond_3
    if-eqz v1, :cond_2

    iget-object v3, v1, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 257
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 260
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/MainActivity;->slideDownAudioPlayer()Z

    .line 263
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 264
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v4, v1, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    # invokes: Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    invoke-static {v3, v4}, Lorg/videolan/vlc/gui/MainActivity;->access$9(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    iget-object v4, v1, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-virtual {v2, v8, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 265
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 266
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v4, v1, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/videolan/vlc/gui/MainActivity;->access$10(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v5}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 273
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;
    invoke-static {v4}, Lorg/videolan/vlc/gui/MainActivity;->access$11(Lorg/videolan/vlc/gui/MainActivity;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    invoke-static {v3, v4}, Lorg/videolan/vlc/gui/MainActivity;->access$9(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 275
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tracks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 276
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    const-string v4, "audio"

    # invokes: Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    invoke-static {v3, v4}, Lorg/videolan/vlc/gui/MainActivity;->access$9(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 278
    :cond_4
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mFocusedPrior:I
    invoke-static {v3}, Lorg/videolan/vlc/gui/MainActivity;->access$8(Lorg/videolan/vlc/gui/MainActivity;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v3, v7}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 280
    :cond_5
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mRootContainer:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v3}, Lorg/videolan/vlc/gui/MainActivity;->access$6(Lorg/videolan/vlc/gui/MainActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity$4;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    # getter for: Lorg/videolan/vlc/gui/MainActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lorg/videolan/vlc/gui/MainActivity;->access$7(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0
.end method
