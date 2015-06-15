.class abstract Lcom/baidu/frontia/api/FrontiaPushUtil$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/api/FrontiaPushUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/baidu/android/pushservice/internal/PushNotificationBuilder;
.end method

.method public abstract setNotificationDefaults(I)V
.end method

.method public abstract setNotificationFlags(I)V
.end method

.method public abstract setNotificationSound(Landroid/net/Uri;)V
.end method

.method public abstract setNotificationText(Ljava/lang/String;)V
.end method

.method public abstract setNotificationTitle(Ljava/lang/String;)V
.end method

.method public abstract setNotificationVibrate([J)V
.end method

.method public abstract setStatusbarIcon(I)V
.end method
