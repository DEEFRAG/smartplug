.class Lorg/videolan/vlc/gui/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->showTipViewIfNeeded(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;

.field private final synthetic val$settingKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$9;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/MainActivity$9;->val$settingKey:Ljava/lang/String;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1042
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$9;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/MainActivity;->removeTipViewIfDisplayed()V

    .line 1043
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$9;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1044
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1045
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$9;->val$settingKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1046
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1047
    return-void
.end method
