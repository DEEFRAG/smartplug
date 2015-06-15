.class public Lcom/kankunit/smartplugcronus/provider/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field public static DEVICE_STATE:Ljava/lang/String;

.field public static EXTRA_WORD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "com.commonsware.android.appwidget.lorem.WORD"

    .line 31
    sput-object v0, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;->EXTRA_WORD:Ljava/lang/String;

    .line 34
    const-string v0, "com.commonsware.android.appwidget.lorem.STATE"

    .line 33
    sput-object v0, Lcom/kankunit/smartplugcronus/provider/WidgetProvider;->DEVICE_STATE:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "messageService":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v7, 0x7f0703aa

    .line 40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p3

    if-lt v2, v5, :cond_0

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 64
    return-void

    .line 41
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/kankunit/smartplugcronus/provider/WidgetService;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v3, "svcIntent":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    aget v6, p3, v2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 47
    const v6, 0x7f0300f8

    .line 46
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 49
    .local v4, "widget":Landroid/widget/RemoteViews;
    aget v5, p3, v2

    invoke-virtual {v4, v5, v7, v3}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/kankunit/smartplugcronus/provider/LoremActivity;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "clickIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 56
    const/high16 v6, 0x8000000

    .line 54
    invoke-static {p1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 58
    .local v1, "clickPI":Landroid/app/PendingIntent;
    invoke-virtual {v4, v7, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 60
    aget v5, p3, v2

    invoke-virtual {p2, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
