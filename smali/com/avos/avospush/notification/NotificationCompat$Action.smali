.class public Lcom/avos/avospush/notification/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/notification/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "icon_"    # I
    .param p2, "title_"    # Ljava/lang/CharSequence;
    .param p3, "intent_"    # Landroid/app/PendingIntent;

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput p1, p0, Lcom/avos/avospush/notification/NotificationCompat$Action;->icon:I

    .line 788
    iput-object p2, p0, Lcom/avos/avospush/notification/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 789
    iput-object p3, p0, Lcom/avos/avospush/notification/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 790
    return-void
.end method
