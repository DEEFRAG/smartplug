.class public Lorg/videolan/android/ui/SherlockGridFragment;
.super Lorg/videolan/android/ui/GridFragment;
.source "SherlockGridFragment.java"


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSherlockActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/videolan/android/ui/SherlockGridFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " must be attached to a SherlockFragmentActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 37
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lorg/videolan/android/ui/SherlockGridFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 39
    invoke-super {p0, p1}, Lorg/videolan/android/ui/GridFragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 51
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/android/ui/SherlockGridFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 45
    invoke-super {p0}, Lorg/videolan/android/ui/GridFragment;->onDetach()V

    .line 46
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 56
    return-void
.end method
